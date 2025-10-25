package com.pichillilorenzo.flutter_inappwebview_android;

import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.ValueCallback;
import com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.firebase.analytics.Constants;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import o1.t;
/* loaded from: classes.dex */
public class MyCookieManager extends ChannelDelegateImpl {
    protected static final String LOG_TAG = "MyCookieManager";
    public static final String METHOD_CHANNEL_NAME = "com.pichillilorenzo/flutter_inappwebview_cookiemanager";
    public static CookieManager cookieManager;
    public InAppWebViewFlutterPlugin plugin;

    public MyCookieManager(InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin) {
        super(new MethodChannel(inAppWebViewFlutterPlugin.messenger, METHOD_CHANNEL_NAME));
        this.plugin = inAppWebViewFlutterPlugin;
    }

    public static String getCookieExpirationDate(Long l10) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy hh:mm:ss z", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat.format(new Date(l10.longValue()));
    }

    private static CookieManager getCookieManager() {
        if (cookieManager == null) {
            try {
                cookieManager = CookieManager.getInstance();
            } catch (IllegalArgumentException unused) {
                return null;
            } catch (Exception e10) {
                if (e10.getMessage() != null && e10.getClass().getCanonicalName().equals("android.webkit.WebViewFactory.MissingWebViewPackageException")) {
                    return null;
                }
                throw e10;
            }
        }
        return cookieManager;
    }

    public static void init() {
        if (cookieManager == null) {
            cookieManager = getCookieManager();
        }
    }

    public void deleteAllCookies(final MethodChannel.Result result) {
        CookieManager cookieManager2 = getCookieManager();
        cookieManager = cookieManager2;
        if (cookieManager2 == null) {
            result.success(Boolean.FALSE);
            return;
        }
        cookieManager.removeAllCookies(new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.MyCookieManager.3
            @Override // android.webkit.ValueCallback
            public void onReceiveValue(Boolean bool) {
                result.success(bool);
            }
        });
        cookieManager.flush();
    }

    public void deleteCookie(String str, String str2, String str3, String str4, final MethodChannel.Result result) {
        CookieManager cookieManager2 = getCookieManager();
        cookieManager = cookieManager2;
        if (cookieManager2 == null) {
            result.success(Boolean.FALSE);
            return;
        }
        String str5 = str2 + "=; Path=" + str4 + "; Max-Age=-1";
        if (str3 != null) {
            str5 = str5 + "; Domain=" + str3;
        }
        cookieManager.setCookie(str, str5 + ";", new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.MyCookieManager.2
            @Override // android.webkit.ValueCallback
            public void onReceiveValue(Boolean bool) {
                result.success(bool);
            }
        });
        cookieManager.flush();
    }

    public void deleteCookies(String str, String str2, String str3, MethodChannel.Result result) {
        CookieManager cookieManager2 = getCookieManager();
        cookieManager = cookieManager2;
        if (cookieManager2 == null) {
            result.success(Boolean.FALSE);
            return;
        }
        String cookie = cookieManager2.getCookie(str);
        if (cookie != null) {
            for (String str4 : cookie.split(";")) {
                String str5 = str4.split("=", 2)[0].trim() + "=; Path=" + str3 + "; Max-Age=-1";
                if (str2 != null) {
                    str5 = str5 + "; Domain=" + str2;
                }
                cookieManager.setCookie(str, str5 + ";", null);
            }
            cookieManager.flush();
        }
        result.success(Boolean.TRUE);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        super.dispose();
        this.plugin = null;
    }

    public List<Map<String, Object>> getCookies(String str) {
        String str2;
        String str3;
        String str4;
        ArrayList arrayList = new ArrayList();
        CookieManager cookieManager2 = getCookieManager();
        cookieManager = cookieManager2;
        if (cookieManager2 == null) {
            return arrayList;
        }
        List arrayList2 = new ArrayList();
        String str5 = "GET_COOKIE_INFO";
        String str6 = ";";
        if (t.a("GET_COOKIE_INFO")) {
            arrayList2 = o1.a.b(cookieManager, str);
        } else {
            String cookie = cookieManager.getCookie(str);
            if (cookie != null) {
                arrayList2 = Arrays.asList(cookie.split(";"));
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            String[] split = ((String) it.next()).split(str6);
            if (split.length != 0) {
                String[] split2 = split[0].split("=", 2);
                String trim = split2[0].trim();
                if (split2.length <= 1) {
                    str2 = "";
                } else {
                    str2 = split2[1].trim();
                }
                HashMap hashMap = new HashMap();
                hashMap.put(Constants.NAME, trim);
                hashMap.put("value", str2);
                hashMap.put("expiresDate", null);
                hashMap.put("isSessionOnly", null);
                hashMap.put("domain", null);
                hashMap.put("sameSite", null);
                hashMap.put("isSecure", null);
                hashMap.put("isHttpOnly", null);
                hashMap.put("path", null);
                if (t.a(str5)) {
                    Boolean bool = Boolean.FALSE;
                    hashMap.put("isSecure", bool);
                    hashMap.put("isHttpOnly", bool);
                    int i10 = 1;
                    while (i10 < split.length) {
                        Iterator it2 = it;
                        String[] split3 = split[i10].split("=", 2);
                        String trim2 = split3[0].trim();
                        String str7 = str5;
                        String[] strArr = split;
                        if (split3.length <= 1) {
                            str3 = "";
                        } else {
                            str3 = split3[1].trim();
                        }
                        if (trim2.equalsIgnoreCase("Expires")) {
                            try {
                                str4 = str6;
                                try {
                                    Date parse = new SimpleDateFormat("EEE, dd MMM yyyy hh:mm:ss z", Locale.US).parse(str3);
                                    if (parse != null) {
                                        hashMap.put("expiresDate", Long.valueOf(parse.getTime()));
                                    }
                                } catch (ParseException e10) {
                                    e = e10;
                                    Log.e(LOG_TAG, "", e);
                                    i10++;
                                    str5 = str7;
                                    it = it2;
                                    split = strArr;
                                    str6 = str4;
                                }
                            } catch (ParseException e11) {
                                e = e11;
                                str4 = str6;
                            }
                        } else {
                            str4 = str6;
                            if (trim2.equalsIgnoreCase("Max-Age")) {
                                try {
                                    hashMap.put("expiresDate", Long.valueOf(System.currentTimeMillis() + Long.parseLong(str3)));
                                } catch (NumberFormatException e12) {
                                    Log.e(LOG_TAG, "", e12);
                                }
                            } else if (trim2.equalsIgnoreCase("Domain")) {
                                hashMap.put("domain", str3);
                            } else if (trim2.equalsIgnoreCase("SameSite")) {
                                hashMap.put("sameSite", str3);
                            } else if (trim2.equalsIgnoreCase("Secure")) {
                                hashMap.put("isSecure", Boolean.TRUE);
                            } else if (trim2.equalsIgnoreCase("HttpOnly")) {
                                hashMap.put("isHttpOnly", Boolean.TRUE);
                            } else if (trim2.equalsIgnoreCase("Path")) {
                                hashMap.put("path", str3);
                            }
                        }
                        i10++;
                        str5 = str7;
                        it = it2;
                        split = strArr;
                        str6 = str4;
                    }
                }
                arrayList.add(hashMap);
                str5 = str5;
                it = it;
                str6 = str6;
            }
        }
        return arrayList;
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.ChannelDelegateImpl, io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        Long l10;
        init();
        String str = methodCall.method;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1222815761:
                if (str.equals("deleteCookie")) {
                    c10 = 0;
                    break;
                }
                break;
            case -913968963:
                if (str.equals("removeSessionCookies")) {
                    c10 = 1;
                    break;
                }
                break;
            case 126640486:
                if (str.equals("setCookie")) {
                    c10 = 2;
                    break;
                }
                break;
            case 747417188:
                if (str.equals("deleteCookies")) {
                    c10 = 3;
                    break;
                }
                break;
            case 822411705:
                if (str.equals("deleteAllCookies")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1989049945:
                if (str.equals("getCookies")) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                deleteCookie((String) methodCall.argument("url"), (String) methodCall.argument(Constants.NAME), (String) methodCall.argument("domain"), (String) methodCall.argument("path"), result);
                return;
            case 1:
                removeSessionCookies(result);
                return;
            case 2:
                String str2 = (String) methodCall.argument("url");
                String str3 = (String) methodCall.argument(Constants.NAME);
                String str4 = (String) methodCall.argument("value");
                String str5 = (String) methodCall.argument("domain");
                String str6 = (String) methodCall.argument("path");
                String str7 = (String) methodCall.argument("expiresDate");
                if (str7 != null) {
                    l10 = new Long(str7);
                } else {
                    l10 = null;
                }
                setCookie(str2, str3, str4, str5, str6, l10, (Integer) methodCall.argument("maxAge"), (Boolean) methodCall.argument("isSecure"), (Boolean) methodCall.argument("isHttpOnly"), (String) methodCall.argument("sameSite"), result);
                return;
            case 3:
                deleteCookies((String) methodCall.argument("url"), (String) methodCall.argument("domain"), (String) methodCall.argument("path"), result);
                return;
            case 4:
                deleteAllCookies(result);
                return;
            case 5:
                result.success(getCookies((String) methodCall.argument("url")));
                return;
            default:
                result.notImplemented();
                return;
        }
    }

    public void removeSessionCookies(final MethodChannel.Result result) {
        CookieManager cookieManager2 = getCookieManager();
        cookieManager = cookieManager2;
        if (cookieManager2 == null) {
            result.success(Boolean.FALSE);
            return;
        }
        cookieManager.removeSessionCookies(new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.MyCookieManager.4
            @Override // android.webkit.ValueCallback
            public void onReceiveValue(Boolean bool) {
                result.success(bool);
            }
        });
        cookieManager.flush();
    }

    public void setCookie(String str, String str2, String str3, String str4, String str5, Long l10, Integer num, Boolean bool, Boolean bool2, String str6, final MethodChannel.Result result) {
        CookieManager cookieManager2 = getCookieManager();
        cookieManager = cookieManager2;
        if (cookieManager2 == null) {
            result.success(Boolean.FALSE);
            return;
        }
        String str7 = str2 + "=" + str3 + "; Path=" + str5;
        if (str4 != null) {
            str7 = str7 + "; Domain=" + str4;
        }
        if (l10 != null) {
            str7 = str7 + "; Expires=" + getCookieExpirationDate(l10);
        }
        if (num != null) {
            str7 = str7 + "; Max-Age=" + num.toString();
        }
        if (bool != null && bool.booleanValue()) {
            str7 = str7 + "; Secure";
        }
        if (bool2 != null && bool2.booleanValue()) {
            str7 = str7 + "; HttpOnly";
        }
        if (str6 != null) {
            str7 = str7 + "; SameSite=" + str6;
        }
        cookieManager.setCookie(str, str7 + ";", new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview_android.MyCookieManager.1
            @Override // android.webkit.ValueCallback
            public void onReceiveValue(Boolean bool3) {
                result.success(bool3);
            }
        });
        cookieManager.flush();
    }
}
