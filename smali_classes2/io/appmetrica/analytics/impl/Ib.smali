.class public final Lio/appmetrica/analytics/impl/Ib;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Jb;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Jb;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ib;->a:Lio/appmetrica/analytics/impl/Jb;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ib;->a:Lio/appmetrica/analytics/impl/Jb;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Jb;->a:Lio/appmetrica/analytics/impl/o5;

    .line 4
    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/D5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lio/appmetrica/analytics/impl/lh;

    .line 12
    .line 13
    return-object v0
.end method
