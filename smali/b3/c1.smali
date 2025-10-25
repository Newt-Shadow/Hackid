.class public final synthetic Lb3/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb3/c1;->a:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lb3/c1;->a:I

    check-cast p1, Lb3/m3$d;

    invoke-static {v0, p1}, Lb3/g1;->f0(ILb3/m3$d;)V

    return-void
.end method
