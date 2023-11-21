
show_message_async(json_encode(async_load))

switch(async_load[?"type"])
{
	case "googleplayinstant_instant_apps_enabled":
	
		if(async_load[?"success"])
		{
			if(async_load[?"enabled"])
			{
			}
			else
			{
			}
		}
		else
		{
		}
		
	break
	
	
	case "googleplayinstant_get_instant_app_data":
		
		if(async_load[?"success"])
		{
			var _buff = buffer_create(1024, buffer_fixed, 1);
			googleplayinstant_read_instant_app_data(0, 1024, buffer_get_address(_buff));
			
			// Do something with the data
			
			buffer_delete(_buff);
		}
		else
		{
			var exception = async_load[?"exception"]
		}
		
	break
	
	case "googleplayinstant_show_install_prompt":
	break
}
