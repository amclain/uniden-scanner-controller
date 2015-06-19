defmodule Scanner.Controller.SerialPort do
  use GenServer
  
  def start_link do
    GenServer.start_link __MODULE__, [], []
  end
  
  # Transmit data.
  def tx pid, data do
    # TODO: Implement
  end
  
  # gen_server callbacks
  
  def init [] do
    serial_port = :serial.start open: "/dev/ttyUSB0", speed: 115200
    
    state = [
      serial_port: serial_port,
      rx_buffer: "",
      tx_queue: [],
      busy: false,
    ]
    
    {:ok, state}
  end
  
  def terminate _reason, state do
    send state[:serial_port], {:close}
    :ok
  end
  
  def code_change _old_vsn, state, _extra do
    {:ok, state}
  end
  
end
