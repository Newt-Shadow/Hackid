.class public final Ln5/f1;
.super Ln5/u0;
.source "SourceFile"


# instance fields
.field private a:Ln5/c;

.field private final g:I


# direct methods
.method public constructor <init>(Ln5/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln5/u0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln5/f1;->a:Ln5/c;

    .line 5
    .line 6
    iput p2, p0, Ln5/f1;->g:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final B(ILandroid/os/IBinder;Ln5/j1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln5/f1;->a:Ln5/c;

    .line 2
    .line 3
    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-static {p3}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p3}, Ln5/c;->c0(Ln5/c;Ln5/j1;)V

    .line 12
    .line 13
    .line 14
    iget-object p3, p3, Ln5/j1;->a:Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Ln5/f1;->h0(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final K(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/Exception;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p2, "GmsClient"

    .line 7
    .line 8
    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    .line 9
    .line 10
    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final h0(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln5/f1;->a:Ln5/c;

    .line 2
    .line 3
    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ln5/f1;->a:Ln5/c;

    .line 9
    .line 10
    iget v1, p0, Ln5/f1;->g:I

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, p3, v1}, Ln5/c;->N(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Ln5/f1;->a:Ln5/c;

    .line 17
    .line 18
    return-void
.end method
