package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.nf;
import java.util.Arrays;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class z5 {

    /* renamed from: a  reason: collision with root package name */
    private final String f8316a;

    /* renamed from: b  reason: collision with root package name */
    private final Bundle f8317b;

    /* renamed from: c  reason: collision with root package name */
    private Bundle f8318c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ d6 f8319d;

    public z5(d6 d6Var, String str, Bundle bundle) {
        Objects.requireNonNull(d6Var);
        this.f8319d = d6Var;
        n5.q.e(str);
        this.f8316a = str;
        this.f8317b = new Bundle();
    }

    public final Bundle a() {
        char c10;
        if (this.f8318c == null) {
            d6 d6Var = this.f8319d;
            String string = d6Var.p().getString(this.f8316a, null);
            if (string != null) {
                try {
                    Bundle bundle = new Bundle();
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        try {
                            JSONObject jSONObject = jSONArray.getJSONObject(i10);
                            String string2 = jSONObject.getString("n");
                            String string3 = jSONObject.getString("t");
                            int hashCode = string3.hashCode();
                            if (hashCode != 100) {
                                if (hashCode != 108) {
                                    if (hashCode != 115) {
                                        if (hashCode != 3352) {
                                            if (hashCode == 3445 && string3.equals("la")) {
                                                c10 = 4;
                                            }
                                            c10 = 65535;
                                        } else {
                                            if (string3.equals("ia")) {
                                                c10 = 3;
                                            }
                                            c10 = 65535;
                                        }
                                    } else {
                                        if (string3.equals("s")) {
                                            c10 = 0;
                                        }
                                        c10 = 65535;
                                    }
                                } else {
                                    if (string3.equals("l")) {
                                        c10 = 2;
                                    }
                                    c10 = 65535;
                                }
                            } else {
                                if (string3.equals("d")) {
                                    c10 = 1;
                                }
                                c10 = 65535;
                            }
                            if (c10 != 0) {
                                if (c10 != 1) {
                                    if (c10 != 2) {
                                        if (c10 != 3) {
                                            if (c10 != 4) {
                                                d6Var.f8322a.a().o().b("Unrecognized persisted bundle type. Type", string3);
                                            } else {
                                                nf.a();
                                                if (d6Var.f8322a.w().H(null, c5.R0)) {
                                                    JSONArray jSONArray2 = new JSONArray(jSONObject.getString("v"));
                                                    int length = jSONArray2.length();
                                                    long[] jArr = new long[length];
                                                    for (int i11 = 0; i11 < length; i11++) {
                                                        jArr[i11] = jSONArray2.optLong(i11);
                                                    }
                                                    bundle.putLongArray(string2, jArr);
                                                }
                                            }
                                        } else {
                                            nf.a();
                                            if (d6Var.f8322a.w().H(null, c5.R0)) {
                                                JSONArray jSONArray3 = new JSONArray(jSONObject.getString("v"));
                                                int length2 = jSONArray3.length();
                                                int[] iArr = new int[length2];
                                                for (int i12 = 0; i12 < length2; i12++) {
                                                    iArr[i12] = jSONArray3.optInt(i12);
                                                }
                                                bundle.putIntArray(string2, iArr);
                                            }
                                        }
                                    } else {
                                        bundle.putLong(string2, Long.parseLong(jSONObject.getString("v")));
                                    }
                                } else {
                                    bundle.putDouble(string2, Double.parseDouble(jSONObject.getString("v")));
                                }
                            } else {
                                bundle.putString(string2, jSONObject.getString("v"));
                            }
                        } catch (NumberFormatException | JSONException unused) {
                            this.f8319d.f8322a.a().o().a("Error reading value from SharedPreferences. Value dropped");
                        }
                    }
                    this.f8318c = bundle;
                } catch (JSONException unused2) {
                    this.f8319d.f8322a.a().o().a("Error loading bundle from SharedPreferences. Values will be lost");
                }
            }
            if (this.f8318c == null) {
                this.f8318c = this.f8317b;
            }
        }
        return new Bundle((Bundle) n5.q.k(this.f8318c));
    }

    public final void b(Bundle bundle) {
        Bundle bundle2;
        d6 d6Var;
        JSONObject jSONObject;
        w6 w6Var;
        if (bundle == null) {
            bundle2 = new Bundle();
        } else {
            bundle2 = new Bundle(bundle);
        }
        d6 d6Var2 = this.f8319d;
        SharedPreferences.Editor edit = d6Var2.p().edit();
        if (bundle2.size() == 0) {
            edit.remove(this.f8316a);
        } else {
            String str = this.f8316a;
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle2.keySet()) {
                Object obj = bundle2.get(str2);
                if (obj != null) {
                    try {
                        jSONObject = new JSONObject();
                        jSONObject.put("n", str2);
                        nf.a();
                        w6Var = d6Var2.f8322a;
                        d6Var = d6Var2;
                    } catch (JSONException e10) {
                        e = e10;
                        d6Var = d6Var2;
                    }
                    if (w6Var.w().H(null, c5.R0)) {
                        try {
                        } catch (JSONException e11) {
                            e = e11;
                            this.f8319d.f8322a.a().o().b("Cannot serialize bundle value to SharedPreferences", e);
                            d6Var2 = d6Var;
                        }
                        if (obj instanceof String) {
                            jSONObject.put("v", obj.toString());
                            jSONObject.put("t", "s");
                        } else if (obj instanceof Long) {
                            jSONObject.put("v", obj.toString());
                            jSONObject.put("t", "l");
                        } else if (obj instanceof int[]) {
                            jSONObject.put("v", Arrays.toString((int[]) obj));
                            jSONObject.put("t", "ia");
                        } else if (obj instanceof long[]) {
                            jSONObject.put("v", Arrays.toString((long[]) obj));
                            jSONObject.put("t", "la");
                        } else if (obj instanceof Double) {
                            jSONObject.put("v", obj.toString());
                            jSONObject.put("t", "d");
                        } else {
                            w6Var.a().o().b("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                            d6Var2 = d6Var;
                        }
                        jSONArray.put(jSONObject);
                        d6Var2 = d6Var;
                    } else {
                        jSONObject.put("v", obj.toString());
                        if (obj instanceof String) {
                            jSONObject.put("t", "s");
                        } else if (obj instanceof Long) {
                            jSONObject.put("t", "l");
                        } else if (obj instanceof Double) {
                            jSONObject.put("t", "d");
                        } else {
                            w6Var.a().o().b("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                            d6Var2 = d6Var;
                        }
                        jSONArray.put(jSONObject);
                        d6Var2 = d6Var;
                    }
                }
            }
            edit.putString(str, jSONArray.toString());
        }
        edit.apply();
        this.f8318c = bundle2;
    }
}
