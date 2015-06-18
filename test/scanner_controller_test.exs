defmodule Scanner.Controller.Test do
  use ExUnit.Case
  
  setup context do
    {:ok, pid} = Scanner.Controller.start_link
    {:ok, pid: pid}
  end
  
  test "model number", context do
    model_number = "12345"
    Scanner.Controller.set_model_number context[:pid], model_number
    value = Scanner.Controller.get_model_number context[:pid]
    assert value == model_number
  end
  
  test "signal strength", context do
    level = 500
    Scanner.Controller.set_signal_strength context[:pid], level
    value = Scanner.Controller.get_signal_strength context[:pid]
    assert value == level
  end
  
  test "battery voltage", context do
    level = 6.4
    Scanner.Controller.set_battery_voltage context[:pid], level
    value = Scanner.Controller.get_battery_voltage context[:pid]
    assert value == level
  end
  
  test "volume", context do
    level = 7
    Scanner.Controller.set_volume context[:pid], level
    value = Scanner.Controller.get_volume context[:pid]
    assert value == level
  end
  
  test "squelch", context do
    level = 2
    Scanner.Controller.set_squelch context[:pid], level
    value = Scanner.Controller.get_squelch context[:pid]
    assert value == level
  end
  
  test "display data", context do
    # TODO: Implement
  end
  
  test "frequency", context do
    # TODO: Implement
  end
  
  test "press key", context do
    # TODO: Implement
  end
  
end
