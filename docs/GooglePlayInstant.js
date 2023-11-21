
/**
 * @func googleplayinstant_is_instant_app
 * @desc Checks if application loaded as instant experience.
 * @returns {real}
 * @func_end
*/		
function googleplayinstant_is_instant_app() {}

/**
 * @func googleplayinstant_set_instant_app_cookie
 * @desc Save byte array in cookies to be able get access to this data in installable application.
 * @returns {real}
 * @func_end
 */	
function googleplayinstant_set_instant_app_cookie(str) {}

/**
 * @func googleplayinstant_get_instant_app_cookie_max_size
 * @desc Gets the maximum size in bytes of the cookie data an instant app can store on the device.
 * @returns {real}
 * @func_end
 */	
function googleplayinstant_get_instant_app_cookie_max_size() {}

/**
 * @func googleplayinstant_get_instant_app_cookie
 * @desc Load byte array from cookies that were saved in instant application.
 * @returns {string}
 * @func_end
 */
function googleplayinstant_get_instant_app_cookie() {}

/**
 * @func googleplayinstant_get_instant_app_data
 * @desc Fetches data from the current instant app. This function needs to be called prior to ${function.googleplayinstant_read_instant_app_data}.
 * 
 * @event social
 * @member {string} type The string value `"googleplayinstant_get_instant_app_data"`
 * @member {bool} success If the operation of successful or not.
 * @member {string} exception
 * @event_end
 * @func_end
 */	
function googleplayinstant_get_instant_app_data() {}

/**
 * @func googleplayinstant_read_instant_app_data
 * @desc This function will read app data into a buffer. You need to call ${function.googleplayinstant_get_instant_app_data} and wait for its async event to trigger before calling this function.
 * The return value is the amount of bytes read from the app data (-1 will represent the end of the stream and 0 will represent an error while reading).
 * 
 * [[warn: The function will not resize the input buffer when reading from the file stream. You will need to make sure the length argument is valid in regards to the offset and the buffer size.]]
 *
 * @param {real} offset The offset to be used when writting to the buffer
 * @param {real} length The number of bytes to read from the cached app data
 * @param {real} buffer_address The return of ${function.buffer_get_address} for a Id.Buffer
 * @returns {bool}
 *
 * @func_end
 */	
function googleplayinstant_read_instant_app_data() {}

/**
 * @func googleplayinstant_are_instant_apps_enabled_for_device
 * @desc Checks if instant apps are enabled for this device.
 * 
 * @event social
 * @member {string} type The string value `"googleplayinstant_instant_apps_enabled"`
 * @member {bool} success
 * @member {bool} enabled 
 * @member {string} exception
 * @event_end
 * 
 * @func_end
 */	
function googleplayinstant_are_instant_apps_enabled_for_device() {}


/**
 * @func googleplayinstant_show_install_prompt
 * @desc Shows a dialog that allows the user to install the current instant app.
 * 
 * @event social
 * @member {string} type The string value `"googleplayinstant_show_install_prompt"`
 * @event_end
 * 
 * @func_end
 */
function googleplayinstant_show_install_prompt(title, url, referrer) {}



  
/**
 * @module home
 * @title Google Play Instant
 * @desc 
 * @section_func
 * @ref googleplayinstant_is_instant_app
 * @ref googleplayinstant_set_instant_app_cookie
 * @ref googleplayinstant_get_instant_app_cookie_max_size
 * @ref googleplayinstant_get_instant_app_cookie
 * @ref googleplayinstant_get_instant_app_data
 * @ref googleplayinstant_read_instant_app_data
 * @ref googleplayinstant_instant_apps_enabled
 * @ref googleplayinstant_show_install_prompt
 * @section_end
 * @module_end
 */

