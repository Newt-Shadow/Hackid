.class public final synthetic Lb3/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb3/d3$a;

.field public final synthetic b:Landroid/util/Pair;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lb3/d3$a;Landroid/util/Pair;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/x2;->a:Lb3/d3$a;

    iput-object p2, p0, Lb3/x2;->b:Landroid/util/Pair;

    iput p3, p0, Lb3/x2;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/x2;->a:Lb3/d3$a;

    iget-object v1, p0, Lb3/x2;->b:Landroid/util/Pair;

    iget v2, p0, Lb3/x2;->c:I

    invoke-static {v0, v1, v2}, Lb3/d3$a;->S(Lb3/d3$a;Landroid/util/Pair;I)V

    return-void
.end method
