# The openShake PC client
The PC client software is built in Java and features a swing-based GUI. The communication is handled by the Data class, which creates a new Sample object and send it to all of the Updater implementations added to it in the initializations phase. This is a simple, but expandable approach which allows for simple expansion and creation of new data flows.
