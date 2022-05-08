#include <iostream>

// библиотека для работы с XLSX
#include <OpenXLSX.hpp>
// взята с https://github.com/troldal/OpenXLSX

#include <vector>
#include <algorithm>
#include <string>
#include <pthread.h>
#include <fstream>

using namespace std;
using namespace OpenXLSX;

// структура для передачи данных в потоки
struct Metadata
{
	string filename;
	vector<string>* vault;
};

pthread_mutex_t lock;

void* handler(void* argument)
{
	// ставим мьютекс, чтобы остальные потоки не успели 
	// вставить свои данные в указатель
	pthread_mutex_lock(&lock);

	// заполняем информацию о файле
	// и указатель на массив со строками
	Metadata* metadata = (Metadata*)argument;
	string line = metadata->filename;
	vector<string>* vault = metadata->vault;

	pthread_mutex_unlock(&lock);

	ifstream file("files/" + line);

	while(getline(file, line))
	{
		vault->push_back(line);
	}


	pthread_exit(0);
}

int main(int argc, char ** argv)
{
	XLDocument doc;

	string filename;
	vector<string> general;

	pthread_attr_t attr;
	void* status;
	long int threads_num = 1;

	// инициализация мьютексa, атрибутa
	pthread_mutex_init(&lock, 0);
	pthread_attr_init(&attr);
	pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);

	if(argc == 1) cout << "starting with 1 file" << endl;
	else threads_num = atol(argv[1]);

	vector<string>* files_open = new vector<string>[threads_num];
	pthread_t* threads = new pthread_t[threads_num];
	Metadata metadata;

	// для каждого файла создается отдельный поток,
	// как и было указано в задании
	// названия файлов вводятся вручную
	// потом можно будет докрутить ввод из файла,
	for(size_t i = 0; i < threads_num; ++i)
	{
		cout << "Enter #" << i << " filename here: ";
		cin >> filename;
		metadata.filename = filename;
		metadata.vault = &files_open[i];

		pthread_create(&threads[i], &attr, handler, (void*)&metadata);
	}

	// ждем, пока все потоки завершат работу
	pthread_attr_destroy(&attr);
	for(size_t i = 0; i < threads_num; ++i)
	{
		pthread_join(threads[i], &status);
	}
	pthread_mutex_destroy(&lock);

	// вставляем каждый вектор в конец главного
	for(size_t i = 0; i < threads_num; ++i)
		general.insert(end(general), begin(files_open[i]), end(files_open[i]));

	// сортируем
	sort(general.begin(), general.end());

	// создаем документ
	doc.create("sheet.xlsx");

	auto wks = doc.workbook().worksheet("Sheet1");
	auto rng = wks.range(XLCellReference("A1"), XLCellReference(general.size(), 1));

	// заполняем документ
	int counter = 0;
	for(auto& cell : rng)
	{
		cell.value() = general[counter];
		++counter;
	}


	// освобождаем динамическую память
	// и сохраняем документ
	delete[] threads;
	delete[] files_open;
	doc.save();

	return 0;
}
