.class public final Lio/appmetrica/analytics/impl/Ck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ik;

.field public final b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Bk;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Bk;->a(Lio/appmetrica/analytics/impl/Bk;)Lio/appmetrica/analytics/impl/Ik;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ck;->a:Lio/appmetrica/analytics/impl/Ik;

    .line 9
    .line 10
    invoke-static {p1}, Lio/appmetrica/analytics/impl/Bk;->b(Lio/appmetrica/analytics/impl/Bk;)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ck;->b:Ljava/lang/Integer;

    .line 15
    .line 16
    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/Ik;)Lio/appmetrica/analytics/impl/Bk;
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Bk;

    .line 2
    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/Bk;-><init>(Lio/appmetrica/analytics/impl/Ik;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 1

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ck;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public final b()Lio/appmetrica/analytics/impl/Ik;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ck;->a:Lio/appmetrica/analytics/impl/Ik;

    .line 2
    .line 3
    return-object v0
.end method
