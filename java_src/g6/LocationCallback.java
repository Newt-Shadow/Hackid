package g6;

import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
/* loaded from: classes.dex */
public abstract class LocationCallback {
    public void onLocationAvailability(LocationAvailability locationAvailability) {
    }

    public abstract void onLocationResult(LocationResult locationResult);
}
