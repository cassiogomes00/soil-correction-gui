package Util.conversores;

public interface Conversao<T, R> {

  public R converte(T valor);
}
