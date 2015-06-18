defmodule Scanner.Controller do
  use GenServer
  
  def start_link do
    GenServer.start_link __MODULE__, [], name: :controller
  end
  
  def get_model_number pid do
    GenServer.call pid, {:get_model_number}
  end
  
  def get_signal_strength pid do
    GenServer.call pid, {:get_signal_strength}
  end
  
  def get_battery_voltage pid do
    GenServer.call pid, {:get_battery_voltage}
  end
  
  def get_volume pid do
    GenServer.call pid, {:get_volume}
  end
  
  def set_volume pid, value do
    GenServer.cast pid, {:set_volume, value}
  end
  
  def get_squelch pid do
    GenServer.call pid, {:get_squelch}
  end
  
  def set_squelch pid, value do
    GenServer.cast pid, {:set_squelch, value}
  end
  
  def get_display_data pid do
    GenServer.call pid, {:get_display_data}
  end
  
  def set_frequency pid, value do
    GenServer.cast pid, {:set_frequency, value}
  end
  
  def press_key pid, key do
    GenServer.cast pid, {:press_key, key}
  end
  
  # Serial port interface
  
  def set_model_number pid, value do
    GenServer.cast pid, {:set_model_number, value}
  end
  
  def set_signal_strength pid, value do
    GenServer.cast pid, {:set_signal_strength, value}
  end
  
  def set_battery_voltage pid, value do
    GenServer.cast pid, {:set_battery_voltage, value}
  end
  
  def set_display_data pid, value do
    GenServer.cast pid, {:set_display_data, value}
  end
  
  # gen_server callbacks
  
  def init [] do
    state = [
      model_number: "",
      volume: 0,
      squelch: 0,
      signal_strength: 0,
      battery_voltage: 0,
      display_line_1: "",
      display_line_2: "",
      display_line_3: "",
    ]
    
    {:ok, state}
  end
  
  def terminate _reason, _state do
    :ok
  end
  
  def code_change _old_vsn, state, _extra do
    {:ok, state}
  end
  
  def handle_call {:get_model_number}, _from, state do
    {:reply, state[:model_number], state}
  end
  
  def handle_call {:get_volume}, _from, state do
    {:reply, state[:volume], state}
  end
  
  def handle_call {:get_squelch}, _from, state do
    {:reply, state[:squelch], state}
  end
  
  def handle_call {:get_signal_strength}, _from, state do
    {:reply, state[:signal_strength], state}
  end
  
  def handle_call {:get_battery_voltage}, _from, state do
    {:reply, state[:battery_voltage], state}
  end
  
  def handle_cast {:set_model_number, value}, state do
    {:noreply, Dict.put(state, :model_number, value)}
  end
  
  def handle_cast {:set_volume, value}, state do
    {:noreply, Dict.put(state, :volume, value)}
  end
  
  def handle_cast {:set_squelch, value}, state do
    {:noreply, Dict.put(state, :squelch, value)}
  end
  
  def handle_cast {:set_signal_strength, value}, state do
    {:noreply, Dict.put(state, :signal_strength, value)}
  end
  
  def handle_cast {:set_battery_voltage, value}, state do
    {:noreply, Dict.put(state, :battery_voltage, value)}
  end
  
end
