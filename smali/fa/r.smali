.class public final synthetic Lfa/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lfa/u;


# direct methods
.method public synthetic constructor <init>(Lfa/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa/r;->a:Lfa/u;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/r;->a:Lfa/u;

    invoke-static {v0}, Lfa/u;->q(Lfa/u;)V

    return-void
.end method
