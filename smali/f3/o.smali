.class public final synthetic Lf3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf3/u$a;

.field public final synthetic b:Lf3/u;


# direct methods
.method public synthetic constructor <init>(Lf3/u$a;Lf3/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/o;->a:Lf3/u$a;

    iput-object p2, p0, Lf3/o;->b:Lf3/u;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf3/o;->a:Lf3/u$a;

    iget-object v1, p0, Lf3/o;->b:Lf3/u;

    invoke-static {v0, v1}, Lf3/u$a;->a(Lf3/u$a;Lf3/u;)V

    return-void
.end method
