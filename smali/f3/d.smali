.class public final synthetic Lf3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/h;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf3/d;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lf3/d;->a:I

    check-cast p1, Lf3/u$a;

    invoke-static {v0, p1}, Lf3/g;->k(ILf3/u$a;)V

    return-void
.end method
