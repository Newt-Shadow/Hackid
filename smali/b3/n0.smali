.class public final synthetic Lb3/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lb3/f2;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lb3/f2;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/n0;->a:Lb3/f2;

    iput p2, p0, Lb3/n0;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/n0;->a:Lb3/f2;

    iget v1, p0, Lb3/n0;->b:I

    check-cast p1, Lb3/m3$d;

    invoke-static {v0, v1, p1}, Lb3/g1;->g0(Lb3/f2;ILb3/m3$d;)V

    return-void
.end method
