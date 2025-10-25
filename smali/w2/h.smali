.class public final synthetic Lw2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/b$a;


# instance fields
.field public final synthetic a:Lx2/c;


# direct methods
.method public synthetic constructor <init>(Lx2/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/h;->a:Lx2/c;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lw2/h;->a:Lx2/c;

    invoke-interface {v0}, Lx2/c;->e()Ls2/a;

    move-result-object v0

    return-object v0
.end method
