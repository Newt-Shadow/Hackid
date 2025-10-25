.class final Lcom/pichillilorenzo/flutter_inappwebview_android/service_worker/ServiceWorkerManager$DummyServiceWorkerClientCompat;
.super Lo1/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pichillilorenzo/flutter_inappwebview_android/service_worker/ServiceWorkerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DummyServiceWorkerClientCompat"
.end annotation


# static fields
.field static final INSTANCE:Lo1/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview_android/service_worker/ServiceWorkerManager$DummyServiceWorkerClientCompat;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/service_worker/ServiceWorkerManager$DummyServiceWorkerClientCompat;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview_android/service_worker/ServiceWorkerManager$DummyServiceWorkerClientCompat;->INSTANCE:Lo1/h;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo1/h;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
