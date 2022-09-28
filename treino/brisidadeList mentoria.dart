import 'dart:collection';

main(){
  final podiumQueue = Queue<String>();
  podiumQueue.addFirst("José");
  podiumQueue.addFirst("João");
  podiumQueue.addFirst("Paulo");

  final primeiro =podiumQueue.removeFirst();
  final segundo =podiumQueue.removeFirst();
  final terceiro =podiumQueue.removeFirst();
print(primeiro);
print(segundo);
print(terceiro);

}