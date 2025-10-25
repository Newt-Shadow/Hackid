.class public final Lcom/yandex/metrica/impl/ob/jb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/jb$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/M0;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Uh;Lcom/yandex/metrica/impl/ob/M0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Uh;->e()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p2, 0x0

    .line 12
    :goto_0
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/jb;->a:Lcom/yandex/metrica/impl/ob/M0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/metrica/impl/ob/jb$a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jb;->a:Lcom/yandex/metrica/impl/ob/M0;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [Lxc/k;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/jb$a;->d()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string v2, "OK"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v2, "FAILED"

    .line 18
    .line 19
    :goto_0
    const-string v3, "status"

    .line 20
    .line 21
    invoke-static {v3, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v2, v1, v3

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/jb$a;->b()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "http_status"

    .line 37
    .line 38
    invoke-static {v3, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x1

    .line 43
    aput-object v2, v1, v3

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/jb$a;->c()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "size"

    .line 54
    .line 55
    invoke-static {v3, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v3, 0x2

    .line 60
    aput-object v2, v1, v3

    .line 61
    .line 62
    invoke-static {v1}, Lyc/e0;->i([Lxc/k;)Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/jb$a;->a()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    const-string v2, "reason"

    .line 73
    .line 74
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-static {v1}, Lyc/e0;->q(Ljava/util/Map;)Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v1, "egress_status"

    .line 82
    .line 83
    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method
