.class public final synthetic Lio/appmetrica/analytics/impl/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/ug;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/ug;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/bq;->a:Lio/appmetrica/analytics/impl/ug;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/bq;->a:Lio/appmetrica/analytics/impl/ug;

    check-cast p1, Lio/appmetrica/analytics/impl/lg;

    check-cast p2, Lio/appmetrica/analytics/impl/lg;

    invoke-static {v0, p1, p2}, Lio/appmetrica/analytics/impl/ug;->a(Lio/appmetrica/analytics/impl/ug;Lio/appmetrica/analytics/impl/lg;Lio/appmetrica/analytics/impl/lg;)I

    move-result p1

    return p1
.end method
