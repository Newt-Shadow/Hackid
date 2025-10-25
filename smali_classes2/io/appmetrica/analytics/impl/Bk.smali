.class public final Lio/appmetrica/analytics/impl/Bk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ik;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Ik;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Bk;->a:Lio/appmetrica/analytics/impl/Ik;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lio/appmetrica/analytics/impl/Bk;)Lio/appmetrica/analytics/impl/Ik;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Bk;->a:Lio/appmetrica/analytics/impl/Ik;

    return-object p0
.end method

.method public static synthetic b(Lio/appmetrica/analytics/impl/Bk;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Bk;->b:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Ck;
    .locals 1

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/Ck;

    .line 3
    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/Ck;-><init>(Lio/appmetrica/analytics/impl/Bk;)V

    return-object v0
.end method

.method public final b()Lio/appmetrica/analytics/impl/Bk;
    .locals 1

    const/16 v0, 0xe10

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Bk;->b:Ljava/lang/Integer;

    return-object p0
.end method
