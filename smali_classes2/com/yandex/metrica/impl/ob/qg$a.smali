.class Lcom/yandex/metrica/impl/ob/qg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/qg;->a(Lcom/yandex/metrica/impl/ob/vg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/vg;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/qg;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/qg;Lcom/yandex/metrica/impl/ob/vg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/qg$a;->b:Lcom/yandex/metrica/impl/ob/qg;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/qg$a;->a:Lcom/yandex/metrica/impl/ob/vg;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/qg$a;->b:Lcom/yandex/metrica/impl/ob/qg;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/qg;->a(Lcom/yandex/metrica/impl/ob/qg;)Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v7, Lcom/yandex/metrica/impl/ob/dg;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    sget-object v6, Lcom/yandex/metrica/impl/ob/dg$a;->c:Lcom/yandex/metrica/impl/ob/dg$a;

    .line 28
    .line 29
    move-object v0, v7

    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/dg;-><init>(Ljava/lang/String;JJLcom/yandex/metrica/impl/ob/dg$a;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/qg$a;->b:Lcom/yandex/metrica/impl/ob/qg;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/qg;->b(Lcom/yandex/metrica/impl/ob/qg;)Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v0, Lcom/yandex/metrica/impl/ob/qg$a$a;

    .line 40
    .line 41
    invoke-direct {v0, p0, v7}, Lcom/yandex/metrica/impl/ob/qg$a$a;-><init>(Lcom/yandex/metrica/impl/ob/qg$a;Lcom/yandex/metrica/impl/ob/dg;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qg$a;->b:Lcom/yandex/metrica/impl/ob/qg;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qg$a;->a:Lcom/yandex/metrica/impl/ob/vg;

    .line 52
    .line 53
    invoke-static {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/qg;->a(Lcom/yandex/metrica/impl/ob/qg;Lcom/yandex/metrica/impl/ob/vg;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qg$a;->b:Lcom/yandex/metrica/impl/ob/qg;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qg$a;->a:Lcom/yandex/metrica/impl/ob/vg;

    .line 60
    .line 61
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v4, "Referrer check failed with error "

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/qg;->a(Lcom/yandex/metrica/impl/ob/qg;Lcom/yandex/metrica/impl/ob/vg;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/qg$a;->b:Lcom/yandex/metrica/impl/ob/qg;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/qg;->a(Lcom/yandex/metrica/impl/ob/qg;)Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    .line 94
    .line 95
    :catchall_1
    return-void
.end method
