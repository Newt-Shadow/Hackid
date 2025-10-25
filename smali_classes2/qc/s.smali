.class public final synthetic Lqc/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lqc/m;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lqc/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqc/s;->a:Lqc/m;

    iput-object p2, p0, Lqc/s;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lqc/s;->a:Lqc/m;

    iget-object v1, p0, Lqc/s;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lqc/m$c;->a(Lqc/m;Ljava/lang/String;)Lxc/t;

    move-result-object v0

    return-object v0
.end method
