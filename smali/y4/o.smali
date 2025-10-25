.class public final synthetic Ly4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Ly4/q;


# direct methods
.method public synthetic constructor <init>(Ly4/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/o;->a:Ly4/q;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/o;->a:Ly4/q;

    invoke-static {v0, p1}, Ly4/q;->b(Ly4/q;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
