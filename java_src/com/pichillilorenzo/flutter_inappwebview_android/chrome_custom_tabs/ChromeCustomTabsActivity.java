package com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.widget.RemoteViews;
import androidx.browser.customtabs.a;
import androidx.browser.customtabs.b;
import androidx.browser.customtabs.d;
import androidx.browser.customtabs.i;
import androidx.browser.customtabs.j;
import com.arthenica.ffmpegkit.Chapter;
import com.pichillilorenzo.flutter_inappwebview_android.InAppWebViewFlutterPlugin;
import com.pichillilorenzo.flutter_inappwebview_android.R;
import com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.CustomTabActivityHelper;
import com.pichillilorenzo.flutter_inappwebview_android.types.AndroidResource;
import com.pichillilorenzo.flutter_inappwebview_android.types.CustomTabsActionButton;
import com.pichillilorenzo.flutter_inappwebview_android.types.CustomTabsMenuItem;
import com.pichillilorenzo.flutter_inappwebview_android.types.CustomTabsSecondaryToolbar;
import com.pichillilorenzo.flutter_inappwebview_android.types.Disposable;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ChromeCustomTabsActivity extends Activity implements Disposable {
    public static final int CHROME_CUSTOM_TAB_REQUEST_CODE = 100;
    protected static final String LOG_TAG = "CustomTabsActivity";
    public static final String METHOD_CHANNEL_NAME_PREFIX = "com.pichillilorenzo/flutter_chromesafaribrowser_";
    public static final int NO_HISTORY_CHROME_CUSTOM_TAB_REQUEST_CODE = 101;
    public CustomTabsActionButton actionButton;
    public d.C0021d builder;
    public ChromeCustomTabsChannelDelegate channelDelegate;
    public i customTabsSession;

    /* renamed from: id  reason: collision with root package name */
    public String f9453id;
    public Map<String, String> initialHeaders;
    public List<String> initialOtherLikelyURLs;
    public String initialReferrer;
    public String initialUrl;
    public ChromeSafariBrowserManager manager;
    public CustomTabsSecondaryToolbar secondaryToolbar;
    public ChromeCustomTabsSettings customSettings = new ChromeCustomTabsSettings();
    public CustomTabActivityHelper customTabActivityHelper = new CustomTabActivityHelper();
    protected boolean onOpened = false;
    protected boolean onCompletedInitialLoad = false;
    protected boolean isBindSuccess = false;
    public List<CustomTabsMenuItem> menuItems = new ArrayList();

    private PendingIntent createPendingIntent(int i10) {
        String str;
        Intent intent = new Intent(this, ActionBroadcastReceiver.class);
        Bundle bundle = new Bundle();
        bundle.putInt(ActionBroadcastReceiver.KEY_ACTION_ID, i10);
        bundle.putString(ActionBroadcastReceiver.KEY_ACTION_VIEW_ID, this.f9453id);
        ChromeSafariBrowserManager chromeSafariBrowserManager = this.manager;
        if (chromeSafariBrowserManager != null) {
            str = chromeSafariBrowserManager.f9454id;
        } else {
            str = null;
        }
        bundle.putString(ActionBroadcastReceiver.KEY_ACTION_MANAGER_ID, str);
        intent.putExtras(bundle);
        if (Build.VERSION.SDK_INT >= 31) {
            return PendingIntent.getBroadcast(this, i10, intent, 167772160);
        }
        return PendingIntent.getBroadcast(this, i10, intent, 134217728);
    }

    private void prepareCustomTabs() {
        int i10;
        d.C0021d c0021d = this.builder;
        if (c0021d == null) {
            return;
        }
        ChromeCustomTabsSettings chromeCustomTabsSettings = this.customSettings;
        Boolean bool = chromeCustomTabsSettings.addDefaultShareMenuItem;
        if (bool != null) {
            if (bool.booleanValue()) {
                i10 = 1;
            } else {
                i10 = 2;
            }
            c0021d.l(i10);
        } else {
            c0021d.l(chromeCustomTabsSettings.shareState.intValue());
        }
        a.C0018a c0018a = new a.C0018a();
        String str = this.customSettings.toolbarBackgroundColor;
        if (str != null && !str.isEmpty()) {
            c0018a.e(Color.parseColor(this.customSettings.toolbarBackgroundColor));
        }
        String str2 = this.customSettings.navigationBarColor;
        if (str2 != null && !str2.isEmpty()) {
            c0018a.b(Color.parseColor(this.customSettings.navigationBarColor));
        }
        String str3 = this.customSettings.navigationBarDividerColor;
        if (str3 != null && !str3.isEmpty()) {
            c0018a.c(Color.parseColor(this.customSettings.navigationBarDividerColor));
        }
        String str4 = this.customSettings.secondaryToolbarColor;
        if (str4 != null && !str4.isEmpty()) {
            c0018a.d(Color.parseColor(this.customSettings.secondaryToolbarColor));
        }
        this.builder.e(c0018a.a());
        this.builder.m(this.customSettings.showTitle.booleanValue());
        this.builder.o(this.customSettings.enableUrlBarHiding.booleanValue());
        this.builder.g(this.customSettings.instantAppsEnabled.booleanValue());
        if (this.customSettings.startAnimations.size() == 2) {
            this.builder.n(this, this.customSettings.startAnimations.get(0).getIdentifier(this), this.customSettings.startAnimations.get(1).getIdentifier(this));
        }
        if (this.customSettings.exitAnimations.size() == 2) {
            this.builder.f(this, this.customSettings.exitAnimations.get(0).getIdentifier(this), this.customSettings.exitAnimations.get(1).getIdentifier(this));
        }
        for (CustomTabsMenuItem customTabsMenuItem : this.menuItems) {
            this.builder.a(customTabsMenuItem.getLabel(), createPendingIntent(customTabsMenuItem.getId()));
        }
        CustomTabsActionButton customTabsActionButton = this.actionButton;
        if (customTabsActionButton != null) {
            byte[] icon = customTabsActionButton.getIcon();
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inMutable = true;
            this.builder.c(BitmapFactory.decodeByteArray(icon, 0, icon.length, options), this.actionButton.getDescription(), createPendingIntent(this.actionButton.getId()), this.actionButton.isShouldTint());
        }
        CustomTabsSecondaryToolbar customTabsSecondaryToolbar = this.secondaryToolbar;
        if (customTabsSecondaryToolbar != null) {
            AndroidResource layout = customTabsSecondaryToolbar.getLayout();
            RemoteViews remoteViews = new RemoteViews(layout.getDefPackage(), layout.getIdentifier(this));
            int[] iArr = new int[this.secondaryToolbar.getClickableIDs().size()];
            int size = this.secondaryToolbar.getClickableIDs().size();
            for (int i11 = 0; i11 < size; i11++) {
                iArr[i11] = this.secondaryToolbar.getClickableIDs().get(i11).getIdentifier(this);
            }
            this.builder.h(remoteViews, iArr, getSecondaryToolbarOnClickPendingIntent());
        }
    }

    private void prepareCustomTabsIntent(d dVar) {
        String str = this.customSettings.packageName;
        if (str != null) {
            dVar.f1780a.setPackage(str);
        } else {
            dVar.f1780a.setPackage(CustomTabsHelper.getPackageNameToUse(this));
        }
        if (this.customSettings.keepAliveEnabled.booleanValue()) {
            CustomTabsHelper.addKeepAliveExtra(this, dVar.f1780a);
        }
        if (this.customSettings.alwaysUseBrowserUI.booleanValue()) {
            d.c(dVar.f1780a);
        }
    }

    public void close() {
        onStop();
        onDestroy();
        this.customTabsSession = null;
        finish();
        ChromeCustomTabsChannelDelegate chromeCustomTabsChannelDelegate = this.channelDelegate;
        if (chromeCustomTabsChannelDelegate != null) {
            chromeCustomTabsChannelDelegate.onClosed();
        }
    }

    public void customTabsConnected() {
        String str;
        i session = this.customTabActivityHelper.getSession();
        this.customTabsSession = session;
        if (session != null) {
            try {
                Bundle bundle = new Bundle();
                if (this.customTabsSession.h(bundle)) {
                    this.customTabsSession.m(new j() { // from class: com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.ChromeCustomTabsActivity.3
                        @Override // androidx.browser.customtabs.j
                        public void onGreatestScrollPercentageIncreased(int i10, Bundle bundle2) {
                            ChromeCustomTabsChannelDelegate chromeCustomTabsChannelDelegate = ChromeCustomTabsActivity.this.channelDelegate;
                            if (chromeCustomTabsChannelDelegate != null) {
                                chromeCustomTabsChannelDelegate.onGreatestScrollPercentageIncreased(i10);
                            }
                        }

                        @Override // androidx.browser.customtabs.j
                        public void onSessionEnded(boolean z10, Bundle bundle2) {
                            ChromeCustomTabsChannelDelegate chromeCustomTabsChannelDelegate = ChromeCustomTabsActivity.this.channelDelegate;
                            if (chromeCustomTabsChannelDelegate != null) {
                                chromeCustomTabsChannelDelegate.onSessionEnded(z10);
                            }
                        }

                        @Override // androidx.browser.customtabs.j
                        public void onVerticalScrollEvent(boolean z10, Bundle bundle2) {
                            ChromeCustomTabsChannelDelegate chromeCustomTabsChannelDelegate = ChromeCustomTabsActivity.this.channelDelegate;
                            if (chromeCustomTabsChannelDelegate != null) {
                                chromeCustomTabsChannelDelegate.onVerticalScrollEvent(z10);
                            }
                        }
                    }, bundle);
                }
            } catch (Throwable th) {
                Log.d(LOG_TAG, "Custom Tabs Engagement Signals API not supported", th);
            }
        }
        if (this.isBindSuccess && (str = this.initialUrl) != null) {
            launchUrl(str, this.initialHeaders, this.initialReferrer, this.initialOtherLikelyURLs);
        }
    }

    @Override // com.pichillilorenzo.flutter_inappwebview_android.types.Disposable
    public void dispose() {
        onStop();
        onDestroy();
        ChromeCustomTabsChannelDelegate chromeCustomTabsChannelDelegate = this.channelDelegate;
        if (chromeCustomTabsChannelDelegate != null) {
            chromeCustomTabsChannelDelegate.dispose();
            this.channelDelegate = null;
        }
        ChromeSafariBrowserManager chromeSafariBrowserManager = this.manager;
        if (chromeSafariBrowserManager != null && chromeSafariBrowserManager.browsers.containsKey(this.f9453id)) {
            this.manager.browsers.put(this.f9453id, null);
        }
        this.manager = null;
    }

    public PendingIntent getSecondaryToolbarOnClickPendingIntent() {
        String str;
        Intent intent = new Intent(this, ActionBroadcastReceiver.class);
        Bundle bundle = new Bundle();
        bundle.putString(ActionBroadcastReceiver.KEY_ACTION_VIEW_ID, this.f9453id);
        ChromeSafariBrowserManager chromeSafariBrowserManager = this.manager;
        if (chromeSafariBrowserManager != null) {
            str = chromeSafariBrowserManager.f9454id;
        } else {
            str = null;
        }
        bundle.putString(ActionBroadcastReceiver.KEY_ACTION_MANAGER_ID, str);
        intent.putExtras(bundle);
        if (Build.VERSION.SDK_INT >= 31) {
            return PendingIntent.getBroadcast(this, 0, intent, 167772160);
        }
        return PendingIntent.getBroadcast(this, 0, intent, 134217728);
    }

    public void launchUrl(String str, Map<String, String> map, String str2, List<String> list) {
        launchUrlWithSession(this.customTabsSession, str, map, str2, list);
    }

    public void launchUrlWithSession(i iVar, String str, Map<String, String> map, String str2, List<String> list) {
        Uri uri;
        mayLaunchUrl(str, list);
        this.builder = new d.C0021d(iVar);
        prepareCustomTabs();
        d b10 = this.builder.b();
        prepareCustomTabsIntent(b10);
        Uri parse = Uri.parse(str);
        if (str2 != null) {
            uri = Uri.parse(str2);
        } else {
            uri = null;
        }
        CustomTabActivityHelper.openCustomTab(this, b10, parse, map, uri, 100);
    }

    public boolean mayLaunchUrl(String str, List<String> list) {
        Uri uri;
        if (str != null) {
            uri = Uri.parse(str);
        } else {
            uri = null;
        }
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Bundle bundle = new Bundle();
            for (String str2 : list) {
                bundle.putString("android.support.customtabs.otherurls.URL", str2);
            }
        }
        return this.customTabActivityHelper.mayLaunchUrl(uri, null, arrayList);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 100) {
            close();
            dispose();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        InAppWebViewFlutterPlugin inAppWebViewFlutterPlugin;
        NoHistoryCustomTabsActivityCallbacks noHistoryCustomTabsActivityCallbacks;
        super.onCreate(bundle);
        setContentView(R.layout.chrome_custom_tabs_layout);
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            return;
        }
        this.f9453id = extras.getString(Chapter.KEY_ID);
        ChromeSafariBrowserManager chromeSafariBrowserManager = ChromeSafariBrowserManager.shared.get(extras.getString("managerId"));
        this.manager = chromeSafariBrowserManager;
        if (chromeSafariBrowserManager != null && (inAppWebViewFlutterPlugin = chromeSafariBrowserManager.plugin) != null && inAppWebViewFlutterPlugin.messenger != null) {
            chromeSafariBrowserManager.browsers.put(this.f9453id, this);
            BinaryMessenger binaryMessenger = this.manager.plugin.messenger;
            this.channelDelegate = new ChromeCustomTabsChannelDelegate(this, new MethodChannel(binaryMessenger, METHOD_CHANNEL_NAME_PREFIX + this.f9453id));
            this.initialUrl = extras.getString("url");
            this.initialHeaders = (Map) extras.getSerializable("headers");
            this.initialReferrer = extras.getString("referrer");
            this.initialOtherLikelyURLs = extras.getStringArrayList("otherLikelyURLs");
            ChromeCustomTabsSettings chromeCustomTabsSettings = new ChromeCustomTabsSettings();
            this.customSettings = chromeCustomTabsSettings;
            chromeCustomTabsSettings.parse2((Map<String, Object>) ((HashMap) extras.getSerializable("settings")));
            this.actionButton = CustomTabsActionButton.fromMap((Map) extras.getSerializable("actionButton"));
            this.secondaryToolbar = CustomTabsSecondaryToolbar.fromMap((Map) extras.getSerializable("secondaryToolbar"));
            for (Map map : (List) extras.getSerializable("menuItemList")) {
                this.menuItems.add(CustomTabsMenuItem.fromMap(map));
            }
            if (this.customSettings.noHistory.booleanValue() && (noHistoryCustomTabsActivityCallbacks = this.manager.plugin.noHistoryCustomTabsActivityCallbacks) != null) {
                Map<String, String> map2 = noHistoryCustomTabsActivityCallbacks.noHistoryBrowserIDs;
                String str = this.f9453id;
                map2.put(str, str);
            }
            this.customTabActivityHelper.setConnectionCallback(new CustomTabActivityHelper.ConnectionCallback() { // from class: com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.ChromeCustomTabsActivity.1
                @Override // com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.CustomTabActivityHelper.ConnectionCallback
                public void onCustomTabsConnected() {
                    ChromeCustomTabsActivity.this.customTabsConnected();
                    ChromeCustomTabsChannelDelegate chromeCustomTabsChannelDelegate = ChromeCustomTabsActivity.this.channelDelegate;
                    if (chromeCustomTabsChannelDelegate != null) {
                        chromeCustomTabsChannelDelegate.onServiceConnected();
                    }
                }

                @Override // com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.CustomTabActivityHelper.ConnectionCallback
                public void onCustomTabsDisconnected() {
                    this.close();
                    ChromeCustomTabsActivity.this.dispose();
                }
            });
            this.customTabActivityHelper.setCustomTabsCallback(new b() { // from class: com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.ChromeCustomTabsActivity.2
                @Override // androidx.browser.customtabs.b
                public void extraCallback(String str2, Bundle bundle2) {
                }

                @Override // androidx.browser.customtabs.b
                public void onMessageChannelReady(Bundle bundle2) {
                    ChromeCustomTabsChannelDelegate chromeCustomTabsChannelDelegate = ChromeCustomTabsActivity.this.channelDelegate;
                    if (chromeCustomTabsChannelDelegate != null) {
                        chromeCustomTabsChannelDelegate.onMessageChannelReady();
                    }
                }

                @Override // androidx.browser.customtabs.b
                public void onNavigationEvent(int i10, Bundle bundle2) {
                    if (i10 == 5) {
                        ChromeCustomTabsActivity chromeCustomTabsActivity = ChromeCustomTabsActivity.this;
                        if (!chromeCustomTabsActivity.onOpened) {
                            chromeCustomTabsActivity.onOpened = true;
                            ChromeCustomTabsChannelDelegate chromeCustomTabsChannelDelegate = chromeCustomTabsActivity.channelDelegate;
                            if (chromeCustomTabsChannelDelegate != null) {
                                chromeCustomTabsChannelDelegate.onOpened();
                            }
                        }
                    }
                    if (i10 == 2) {
                        ChromeCustomTabsActivity chromeCustomTabsActivity2 = ChromeCustomTabsActivity.this;
                        if (!chromeCustomTabsActivity2.onCompletedInitialLoad) {
                            chromeCustomTabsActivity2.onCompletedInitialLoad = true;
                            ChromeCustomTabsChannelDelegate chromeCustomTabsChannelDelegate2 = chromeCustomTabsActivity2.channelDelegate;
                            if (chromeCustomTabsChannelDelegate2 != null) {
                                chromeCustomTabsChannelDelegate2.onCompletedInitialLoad();
                            }
                        }
                    }
                    ChromeCustomTabsChannelDelegate chromeCustomTabsChannelDelegate3 = ChromeCustomTabsActivity.this.channelDelegate;
                    if (chromeCustomTabsChannelDelegate3 != null) {
                        chromeCustomTabsChannelDelegate3.onNavigationEvent(i10);
                    }
                }

                @Override // androidx.browser.customtabs.b
                public void onPostMessage(String str2, Bundle bundle2) {
                    ChromeCustomTabsChannelDelegate chromeCustomTabsChannelDelegate = ChromeCustomTabsActivity.this.channelDelegate;
                    if (chromeCustomTabsChannelDelegate != null) {
                        chromeCustomTabsChannelDelegate.onPostMessage(str2);
                    }
                }

                @Override // androidx.browser.customtabs.b
                public void onRelationshipValidationResult(int i10, Uri uri, boolean z10, Bundle bundle2) {
                    ChromeCustomTabsChannelDelegate chromeCustomTabsChannelDelegate = ChromeCustomTabsActivity.this.channelDelegate;
                    if (chromeCustomTabsChannelDelegate != null) {
                        chromeCustomTabsChannelDelegate.onRelationshipValidationResult(i10, uri, z10);
                    }
                }
            });
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onStart() {
        String str;
        super.onStart();
        boolean bindCustomTabsService = this.customTabActivityHelper.bindCustomTabsService(this);
        this.isBindSuccess = bindCustomTabsService;
        if (!bindCustomTabsService && (str = this.initialUrl) != null) {
            launchUrlWithSession(null, str, this.initialHeaders, this.initialReferrer, this.initialOtherLikelyURLs);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.customTabActivityHelper.unbindCustomTabsService(this);
        this.isBindSuccess = false;
    }

    public void updateActionButton(byte[] bArr, String str) {
        if (this.customTabsSession != null && this.actionButton != null) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inMutable = true;
            this.customTabsSession.l(BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options), str);
            this.actionButton.setIcon(bArr);
            this.actionButton.setDescription(str);
        }
    }

    public void updateSecondaryToolbar(CustomTabsSecondaryToolbar customTabsSecondaryToolbar) {
        if (this.customTabsSession == null) {
            return;
        }
        AndroidResource layout = customTabsSecondaryToolbar.getLayout();
        RemoteViews remoteViews = new RemoteViews(layout.getDefPackage(), layout.getIdentifier(this));
        int[] iArr = new int[customTabsSecondaryToolbar.getClickableIDs().size()];
        int size = customTabsSecondaryToolbar.getClickableIDs().size();
        for (int i10 = 0; i10 < size; i10++) {
            iArr[i10] = customTabsSecondaryToolbar.getClickableIDs().get(i10).getIdentifier(this);
        }
        this.customTabsSession.n(remoteViews, iArr, getSecondaryToolbarOnClickPendingIntent());
        this.secondaryToolbar = customTabsSecondaryToolbar;
    }
}
