.class public final Lio/appmetrica/analytics/impl/d5;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Og;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Og;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/d5;->a:Lio/appmetrica/analytics/impl/Og;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/d5;->a:Lio/appmetrica/analytics/impl/Og;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/D5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/appmetrica/analytics/impl/lh;

    .line 8
    .line 9
    iget v0, v0, Lio/appmetrica/analytics/impl/lh;->i:I

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
