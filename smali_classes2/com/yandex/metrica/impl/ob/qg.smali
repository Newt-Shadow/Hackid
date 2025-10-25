.class public Lcom/yandex/metrica/impl/ob/qg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/kg;


# instance fields
.field private final a:Lcom/android/installreferrer/api/InstallReferrerClient;

.field private final b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;


# direct methods
.method constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/qg;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/qg;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/qg;)Lcom/android/installreferrer/api/InstallReferrerClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/qg;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    return-object p0
.end method

.method static a(Lcom/yandex/metrica/impl/ob/qg;Lcom/yandex/metrica/impl/ob/vg;Ljava/lang/Throwable;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qg;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/rg;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/rg;-><init>(Lcom/yandex/metrica/impl/ob/qg;Lcom/yandex/metrica/impl/ob/vg;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/qg;)Lcom/yandex/metrica/core/api/executors/ICommonExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/qg;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/vg;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/qg$a;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/qg$a;-><init>(Lcom/yandex/metrica/impl/ob/qg;Lcom/yandex/metrica/impl/ob/vg;)V

    .line 3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/qg;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1, v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    return-void
.end method
