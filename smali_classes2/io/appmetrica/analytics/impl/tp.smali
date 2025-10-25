.class public final synthetic Lio/appmetrica/analytics/impl/tp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/tp;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/tp;->a:[Ljava/lang/Object;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/k1;->a([Ljava/lang/Object;)V

    return-void
.end method
