.class public Lcom/yandex/metrica/impl/ob/Zf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/IReporter;


# static fields
.field static final b:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Lcom/yandex/metrica/profile/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field static final g:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Lcom/yandex/metrica/Revenue;",
            ">;"
        }
    .end annotation
.end field

.field static final h:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Lcom/yandex/metrica/AdRevenue;",
            ">;"
        }
    .end annotation
.end field

.field static final i:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Lcom/yandex/metrica/ecommerce/ECommerceEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Yf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Fn;

    .line 4
    .line 5
    const-string v2, "Event name"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Fn;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/yandex/metrica/impl/ob/Zf;->b:Lcom/yandex/metrica/impl/ob/Kn;

    .line 14
    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 16
    .line 17
    new-instance v1, Lcom/yandex/metrica/impl/ob/Fn;

    .line 18
    .line 19
    const-string v2, "Error message"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Fn;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/yandex/metrica/impl/ob/Zf;->c:Lcom/yandex/metrica/impl/ob/Kn;

    .line 28
    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 30
    .line 31
    new-instance v1, Lcom/yandex/metrica/impl/ob/Fn;

    .line 32
    .line 33
    const-string v2, "Error identifier"

    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Fn;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/yandex/metrica/impl/ob/Zf;->d:Lcom/yandex/metrica/impl/ob/Kn;

    .line 42
    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 44
    .line 45
    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    .line 46
    .line 47
    const-string v2, "Unhandled exception"

    .line 48
    .line 49
    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/yandex/metrica/impl/ob/Zf;->e:Lcom/yandex/metrica/impl/ob/Kn;

    .line 56
    .line 57
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 58
    .line 59
    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    .line 60
    .line 61
    const-string v2, "User profile"

    .line 62
    .line 63
    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/yandex/metrica/impl/ob/Zf;->f:Lcom/yandex/metrica/impl/ob/Kn;

    .line 70
    .line 71
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 72
    .line 73
    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    .line 74
    .line 75
    const-string v2, "Revenue"

    .line 76
    .line 77
    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/yandex/metrica/impl/ob/Zf;->g:Lcom/yandex/metrica/impl/ob/Kn;

    .line 84
    .line 85
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 86
    .line 87
    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    .line 88
    .line 89
    const-string v2, "AdRevenue"

    .line 90
    .line 91
    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    .line 95
    .line 96
    .line 97
    sput-object v0, Lcom/yandex/metrica/impl/ob/Zf;->h:Lcom/yandex/metrica/impl/ob/Kn;

    .line 98
    .line 99
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 100
    .line 101
    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    .line 102
    .line 103
    const-string v2, "ECommerceEvent"

    .line 104
    .line 105
    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    .line 109
    .line 110
    .line 111
    sput-object v0, Lcom/yandex/metrica/impl/ob/Zf;->i:Lcom/yandex/metrica/impl/ob/Kn;

    .line 112
    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Yf;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Yf;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Zf;-><init>(Lcom/yandex/metrica/impl/ob/Yf;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Yf;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Zf;->a:Lcom/yandex/metrica/impl/ob/Yf;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/Yf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Zf;->a:Lcom/yandex/metrica/impl/ob/Yf;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPluginExtension()Lcom/yandex/metrica/plugins/IPluginReporter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Zf;->a:Lcom/yandex/metrica/impl/ob/Yf;

    .line 2
    .line 3
    return-object v0
.end method

.method public pauseSession()V
    .locals 0

    return-void
.end method

.method public reportAdRevenue(Lcom/yandex/metrica/AdRevenue;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Zf;->h:Lcom/yandex/metrica/impl/ob/Kn;

    .line 2
    .line 3
    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public reportECommerce(Lcom/yandex/metrica/ecommerce/ECommerceEvent;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Zf;->i:Lcom/yandex/metrica/impl/ob/Kn;

    .line 2
    .line 3
    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    sget-object p2, Lcom/yandex/metrica/impl/ob/Zf;->d:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast p2, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    sget-object p2, Lcom/yandex/metrica/impl/ob/Zf;->d:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast p2, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/yandex/metrica/impl/ob/Zf;->c:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast p2, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public reportEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Zf;->b:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    sget-object p2, Lcom/yandex/metrica/impl/ob/Zf;->b:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast p2, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    sget-object p2, Lcom/yandex/metrica/impl/ob/Zf;->b:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast p2, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    return-void
.end method

.method public reportRevenue(Lcom/yandex/metrica/Revenue;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Zf;->g:Lcom/yandex/metrica/impl/ob/Kn;

    .line 2
    .line 3
    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Zf;->e:Lcom/yandex/metrica/impl/ob/Kn;

    .line 2
    .line 3
    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public reportUserProfile(Lcom/yandex/metrica/profile/UserProfile;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/Zf;->f:Lcom/yandex/metrica/impl/ob/Kn;

    .line 2
    .line 3
    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public resumeSession()V
    .locals 0

    return-void
.end method

.method public setStatisticsSending(Z)V
    .locals 0

    return-void
.end method

.method public setUserProfileID(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
