.class public final synthetic Lio/appmetrica/analytics/impl/fp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Ob;

.field public final synthetic b:Lio/appmetrica/analytics/impl/P;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/Ob;Lio/appmetrica/analytics/impl/P;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/fp;->a:Lio/appmetrica/analytics/impl/Ob;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/fp;->b:Lio/appmetrica/analytics/impl/P;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/fp;->a:Lio/appmetrica/analytics/impl/Ob;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/fp;->b:Lio/appmetrica/analytics/impl/P;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/impl/Ob;->a(Lio/appmetrica/analytics/impl/Ob;Lio/appmetrica/analytics/impl/P;)V

    return-void
.end method
