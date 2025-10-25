.class public final synthetic Llb/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llb/q;


# direct methods
.method public synthetic constructor <init>(Llb/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llb/o;->a:Llb/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Llb/o;->a:Llb/q;

    invoke-static {v0}, Llb/q;->b(Llb/q;)V

    return-void
.end method
