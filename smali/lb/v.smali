.class public final synthetic Llb/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llb/x;


# direct methods
.method public synthetic constructor <init>(Llb/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llb/v;->a:Llb/x;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Llb/v;->a:Llb/x;

    invoke-static {v0}, Llb/x;->d(Llb/x;)V

    return-void
.end method
