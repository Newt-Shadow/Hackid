.class public final synthetic Lw2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/b$a;


# instance fields
.field public final synthetic a:Lw2/r;

.field public final synthetic b:Lp2/p;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lw2/r;Lp2/p;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/j;->a:Lw2/r;

    iput-object p2, p0, Lw2/j;->b:Lp2/p;

    iput p3, p0, Lw2/j;->c:I

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lw2/j;->a:Lw2/r;

    iget-object v1, p0, Lw2/j;->b:Lp2/p;

    iget v2, p0, Lw2/j;->c:I

    invoke-static {v0, v1, v2}, Lw2/r;->h(Lw2/r;Lp2/p;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
