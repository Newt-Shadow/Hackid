.class public final Lio/appmetrica/analytics/impl/A4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lio/appmetrica/analytics/impl/B4;->a:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/A4;->a:Z

    .line 7
    .line 8
    sget-boolean v0, Lio/appmetrica/analytics/impl/B4;->b:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/A4;->b:Z

    .line 11
    .line 12
    sget-boolean v0, Lio/appmetrica/analytics/impl/B4;->c:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/A4;->c:Z

    .line 15
    .line 16
    sget-boolean v0, Lio/appmetrica/analytics/impl/B4;->d:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/A4;->d:Z

    .line 19
    .line 20
    sget-boolean v0, Lio/appmetrica/analytics/impl/B4;->e:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/A4;->e:Z

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/appmetrica/analytics/impl/A4;->f:Ljava/lang/Boolean;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic a(Lio/appmetrica/analytics/impl/A4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/A4;->a:Z

    return p0
.end method

.method public static synthetic b(Lio/appmetrica/analytics/impl/A4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/A4;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic c(Lio/appmetrica/analytics/impl/A4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/A4;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lio/appmetrica/analytics/impl/A4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/A4;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic e(Lio/appmetrica/analytics/impl/A4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/A4;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic f(Lio/appmetrica/analytics/impl/A4;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/A4;->f:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/C4;
    .locals 1

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/C4;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/C4;-><init>(Lio/appmetrica/analytics/impl/A4;)V

    return-object v0
.end method
