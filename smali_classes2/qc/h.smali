.class public final synthetic Lqc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lqc/m;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lqc/m;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqc/h;->a:Lqc/m;

    iput p2, p0, Lqc/h;->b:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lqc/h;->a:Lqc/m;

    iget v1, p0, Lqc/h;->b:I

    invoke-static {v0, v1}, Lqc/m;->a(Lqc/m;I)Lxc/t;

    move-result-object v0

    return-object v0
.end method
