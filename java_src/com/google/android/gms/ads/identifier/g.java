package com.google.android.gms.ads.identifier;

import android.util.Log;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import w5.j;
/* loaded from: classes.dex */
public abstract class g {
    public static final void a(String str) {
        try {
            try {
                j.b(263);
                URL url = new URL(str);
                int i10 = w5.g.f31936a;
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                try {
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode < 200 || responseCode >= 300) {
                        Log.w("HttpUrlPinger", "Received non-success response code " + responseCode + " from pinging URL: " + str);
                    }
                    j.a();
                } finally {
                    httpURLConnection.disconnect();
                }
            } catch (IOException e10) {
                e = e10;
                String message = e.getMessage();
                Log.w("HttpUrlPinger", "Error while pinging URL: " + str + ". " + message, e);
                j.a();
            } catch (IndexOutOfBoundsException e11) {
                String message2 = e11.getMessage();
                Log.w("HttpUrlPinger", "Error while parsing ping URL: " + str + ". " + message2, e11);
                j.a();
            } catch (RuntimeException e12) {
                e = e12;
                String message3 = e.getMessage();
                Log.w("HttpUrlPinger", "Error while pinging URL: " + str + ". " + message3, e);
                j.a();
            }
        } catch (Throwable th) {
            j.a();
            throw th;
        }
    }
}
