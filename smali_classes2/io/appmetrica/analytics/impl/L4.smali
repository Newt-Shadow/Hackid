.class public final Lio/appmetrica/analytics/impl/L4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/w4;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/O4;

.field public final c:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/O4;Lio/appmetrica/analytics/impl/G4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/L4;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/L4;->b:Lio/appmetrica/analytics/impl/O4;

    .line 7
    .line 8
    iget-object p1, p3, Lio/appmetrica/analytics/impl/G4;->c:Landroid/os/ResultReceiver;

    .line 9
    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/L4;->c:Landroid/os/ResultReceiver;

    .line 11
    .line 12
    invoke-virtual {p2, p0}, Lio/appmetrica/analytics/impl/O4;->a(Lio/appmetrica/analytics/impl/L4;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/L4;->b:Lio/appmetrica/analytics/impl/O4;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/O4;->b(Lio/appmetrica/analytics/impl/L4;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/G4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/L4;->b:Lio/appmetrica/analytics/impl/O4;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    invoke-virtual {v0, p2}, Lio/appmetrica/analytics/impl/O4;->a(Lio/appmetrica/analytics/impl/F4;)V

    .line 2
    iget-object p2, p0, Lio/appmetrica/analytics/impl/L4;->b:Lio/appmetrica/analytics/impl/O4;

    invoke-virtual {p2, p1, p0}, Lio/appmetrica/analytics/impl/O4;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/L4;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/k4;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/L4;->c:Landroid/os/ResultReceiver;

    invoke-static {v0, p1}, Lio/appmetrica/analytics/impl/M6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/k4;)V

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/O4;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/L4;->b:Lio/appmetrica/analytics/impl/O4;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/L4;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Landroid/os/ResultReceiver;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/L4;->c:Landroid/os/ResultReceiver;

    .line 2
    .line 3
    return-object v0
.end method
