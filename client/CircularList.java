package openShake.client;

public class CircularList<T extends Object>{
	private T[] a;
	int index;

	@SuppressWarnings("unchecked")
	public CircularList(int size){
		this.a = (T[])(new Object[size]);
		this.index = 0;
	}

	public void add(T t){
		this.a[(this.index++)%this.a.length] = t;
	}

	public T[] toInternalArray(){
		return this.a;
	}

	@SuppressWarnings("unchecked")
	public T[] toArray(){
		T[] r = (T[])(new Object[this.a.length]);

		for(int i=0; i<this.a.length; i++){
			r[i] = this.a[(this.index+i)%this.a.length];
		}
		return r;
	}
}
