.class public final synthetic Lw2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lw2/r;

.field public final synthetic b:Lp2/p;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lw2/r;Lp2/p;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/g;->a:Lw2/r;

    iput-object p2, p0, Lw2/g;->b:Lp2/p;

    iput p3, p0, Lw2/g;->c:I

    iput-object p4, p0, Lw2/g;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lw2/g;->a:Lw2/r;

    iget-object v1, p0, Lw2/g;->b:Lp2/p;

    iget v2, p0, Lw2/g;->c:I

    iget-object v3, p0, Lw2/g;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lw2/r;->a(Lw2/r;Lp2/p;ILjava/lang/Runnable;)V

    return-void
.end method
