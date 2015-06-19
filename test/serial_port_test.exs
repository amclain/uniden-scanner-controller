defmodule Scanner.Controller.SerialPort.Test do
  use ExUnit.Case
  
  setup context do
    {:ok, pid} = Scanner.Controller.SerialPort.start_link
    {:ok, pid: pid}
  end
  
  test "", context do
  end
  
end
