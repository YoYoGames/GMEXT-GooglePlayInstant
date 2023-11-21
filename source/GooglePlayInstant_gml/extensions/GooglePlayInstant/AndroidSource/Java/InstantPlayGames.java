package ${YYAndroidPackageName};
import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;

import android.app.Activity;
import android.content.Intent;

import android.util.Log;

import android.content.pm.PackageManager;

import com.google.android.gms.instantapps.InstantApps;

import java.nio.charset.StandardCharsets;
import android.net.Uri;

import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;

import java.lang.Boolean;

import android.os.ParcelFileDescriptor;

import androidx.annotation.NonNull;

public class InstantPlayGames extends RunnerSocial
{	
	Activity activity = RunnerActivity.CurrentActivity;
	
	private static final int EVENT_OTHER_SOCIAL = 70;
	
    public double googleplayinstant_is_instant_app()
	{
		return InstantApps.getPackageManagerCompat(activity).isInstantApp()? 1.0 : 0.0;
	}
	
	public double googleplayinstant_set_instant_app_cookie(String str)
	{
		return InstantApps.getPackageManagerCompat(activity).setInstantAppCookie(str.getBytes())? 1.0 : 0.0;
	}
	
	public double googleplayinstant_get_instant_app_cookie_max_size()
	{
		return InstantApps.getPackageManagerCompat(activity).getInstantAppCookieMaxSize();
	}
	
	public String googleplayinstant_get_instant_app_cookie()
	{
		String str = new String(InstantApps.getPackageManagerCompat(activity).getInstantAppCookie(), StandardCharsets.UTF_8);
		return str;
	}
	
	public void googleplayinstant_get_instant_app_data()
	{
		InstantApps.getInstantAppsClient(activity).getInstantAppData().addOnCompleteListener(new OnCompleteListener<ParcelFileDescriptor>() 
		{
			@Override
			public void onComplete(@NonNull Task<ParcelFileDescriptor> task) 
			{
				int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddString( dsMapIndex, "type", "googleplayinstant_get_instant_app_data");
				if(task.isSuccessful())
				{
					ParcelFileDescriptor mParcelFileDescriptor = task.getResult();
					
					RunnerJNILib.DsMapAddDouble(dsMapIndex,"success",1);
				} 
				else 
				{
					RunnerJNILib.DsMapAddDouble(dsMapIndex,"success",0);
					RunnerJNILib.DsMapAddString(dsMapIndex,"exception",task.getException().getMessage());
				}
				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
			}
		});
	}
	
	public void googleplayinstant_instant_apps_enabled()
	{	
		InstantApps.getInstantAppsClient(activity).areInstantAppsEnabledForDevice().addOnCompleteListener(new OnCompleteListener<Boolean>() 
		{
			@Override
			public void onComplete(@NonNull Task<Boolean> task) 
			{
				int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
				RunnerJNILib.DsMapAddString( dsMapIndex, "type", "googleplayinstant_instant_apps_enabled");
				if(task.isSuccessful())
				{
					RunnerJNILib.DsMapAddDouble(dsMapIndex,"enabled",task.getResult().booleanValue()?1.0:0.0);
					RunnerJNILib.DsMapAddDouble(dsMapIndex,"success",1);
				} 
				else 
				{
					RunnerJNILib.DsMapAddDouble(dsMapIndex,"success",0);
					RunnerJNILib.DsMapAddString(dsMapIndex,"exception",task.getException().getMessage());
				}
				RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
			}
		});
	}
	
	int mRequestCode = 878979;
	public void googleplayinstant_show_install_prompt(String title, String url, String referrer)
	{
		Uri uri = Uri.parse(url);
		Intent postInstallIntent = new Intent("action", uri);
		InstantApps.showInstallPrompt(activity, postInstallIntent, mRequestCode, referrer);
	}
	
	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) 
	{
		super.onActivityResult(requestCode, resultCode, data);

		if(requestCode == mRequestCode)
		{
			int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
			RunnerJNILib.DsMapAddString( dsMapIndex, "type", "googleplayinstant_show_install_prompt");
			RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);					
		}
		
	}
}

