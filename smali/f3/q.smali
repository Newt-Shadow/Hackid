.class public final synthetic Lf3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf3/u$a;

.field public final synthetic b:Lf3/u;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lf3/u$a;Lf3/u;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/q;->a:Lf3/u$a;

    iput-object p2, p0, Lf3/q;->b:Lf3/u;

    iput p3, p0, Lf3/q;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf3/q;->a:Lf3/u$a;

    iget-object v1, p0, Lf3/q;->b:Lf3/u;

    iget v2, p0, Lf3/q;->c:I

    invoke-static {v0, v1, v2}, Lf3/u$a;->f(Lf3/u$a;Lf3/u;I)V

    return-void
.end method
