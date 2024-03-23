### Pergunta

existe alguma(s) funções semelhantes (ao `wait` e `notifyAll`) que permitam desbloquear as threads pela ordem em que foram bloqueadas?

### Resposta

Sim, em Java, você pode usar a classe `java.util.concurrent.locks.Condition` em conjunto com a classe `java.util.concurrent.locks.ReentrantLock` para alcançar um comportamento semelhante, onde as threads podem ser sinalizadas e desbloqueadas na ordem em que foram bloqueadas.

Aqui está um exemplo básico de como você pode usar `Condition` e `ReentrantLock` para implementar isso:

```java
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class OrderedLock {
    private final Lock lock = new ReentrantLock();
    private final Condition[] conditions;
    private int nextConditionIndex = 0;

    public OrderedLock(int numConditions) {
        conditions = new Condition[numConditions];
        for (int i = 0; i < numConditions; i++) {
            conditions[i] = lock.newCondition();
        }
    }

    public void lock(int index) {
        lock.lock();
        try {
            while (index != nextConditionIndex) {
                conditions[index].await();
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        } finally {
            lock.unlock();
        }
    }

    public void unlock(int index) {
        lock.lock();
        try {
            nextConditionIndex = (index + 1) % conditions.length;
            conditions[nextConditionIndex].signal();
        } finally {
            lock.unlock();
        }
    }
}
```

Neste exemplo, você cria um objeto `OrderedLock` com um número específico de condições. Você então chama `lock()` com um índice para bloquear a thread e `unlock()` com o mesmo índice para desbloqueá-la. O desbloqueio ocorre na ordem em que as threads foram bloqueadas, garantindo que as threads sejam desbloqueadas na ordem correta.

Este é apenas um exemplo básico e você pode adaptar essa abordagem para suas necessidades específicas de aplicação.