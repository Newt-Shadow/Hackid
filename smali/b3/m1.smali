.class public final synthetic Lb3/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb3/m1;->a:I

    iput-boolean p2, p0, Lb3/m1;->b:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lb3/m1;->a:I

    iget-boolean v1, p0, Lb3/m1;->b:Z

    check-cast p1, Lb3/m3$d;

    invoke-static {v0, v1, p1}, Lb3/g1$c;->D(IZLb3/m3$d;)V

    return-void
.end method
