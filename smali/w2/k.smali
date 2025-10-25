.class public final synthetic Lw2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/b$a;


# instance fields
.field public final synthetic a:Lw2/r;

.field public final synthetic b:Lp2/p;


# direct methods
.method public synthetic constructor <init>(Lw2/r;Lp2/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/k;->a:Lw2/r;

    iput-object p2, p0, Lw2/k;->b:Lp2/p;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lw2/k;->a:Lw2/r;

    iget-object v1, p0, Lw2/k;->b:Lp2/p;

    invoke-static {v0, v1}, Lw2/r;->b(Lw2/r;Lp2/p;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
