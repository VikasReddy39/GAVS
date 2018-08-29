{\rtf1\ansi\ansicpg1252\cocoartf1561
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww15900\viewh10300\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 Global class demogit implements database.batchable <sobject>\
\{\
	global database.querylocator start(database.batchablecontext bc)\
	\{\
	string query =\'91select name,id from account\'92;\
	return database.getquerylocator(string);\
	\}\
	global void execute(database.batchablecontext bc, list<account>acc)\
	\{	\
		list<account>acceptt = new list<account>();\
		for(account a:acc)\
		\{	\
			if(a.email__c == null)\
			\{ a.email__c = a.name +\'92gmail.com\'92 ; acceptt.add(a);\}\
			update acceptt;\
		\}\
	\}\
	global void finish(database.batchable context)\{\}\
\}}