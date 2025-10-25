.class public final synthetic Ls7/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls7/o;


# direct methods
.method public synthetic constructor <init>(Ls7/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls7/m;->a:Ls7/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls7/m;->a:Ls7/o;

    invoke-static {v0}, Ls7/o;->b(Ls7/o;)V

    return-void
.end method
