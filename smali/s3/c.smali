.class public final synthetic Ls3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln6/s;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls3/c;->a:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Ls3/c;->a:I

    invoke-static {v0}, Ls3/b$b;->b(I)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method
