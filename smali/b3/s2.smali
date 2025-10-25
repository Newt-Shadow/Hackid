.class public final synthetic Lb3/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb3/d3$a;

.field public final synthetic b:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Lb3/d3$a;Landroid/util/Pair;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/s2;->a:Lb3/d3$a;

    iput-object p2, p0, Lb3/s2;->b:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/s2;->a:Lb3/d3$a;

    iget-object v1, p0, Lb3/s2;->b:Landroid/util/Pair;

    invoke-static {v0, v1}, Lb3/d3$a;->N(Lb3/d3$a;Landroid/util/Pair;)V

    return-void
.end method
