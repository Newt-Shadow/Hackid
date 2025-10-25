.class public final Lio/appmetrica/analytics/impl/Jb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/o5;

.field public final b:Lxc/d;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Jb;->a:Lio/appmetrica/analytics/impl/o5;

    .line 5
    .line 6
    new-instance p1, Lio/appmetrica/analytics/impl/Ib;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/Ib;-><init>(Lio/appmetrica/analytics/impl/Jb;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Jb;->b:Lxc/d;

    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/Jb;)Lio/appmetrica/analytics/impl/o5;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jb;->a:Lio/appmetrica/analytics/impl/o5;

    return-object p0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/lh;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jb;->b:Lxc/d;

    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/lh;

    return-object v0
.end method

.method public final bridge synthetic getConfig()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Jb;->a()Lio/appmetrica/analytics/impl/lh;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
