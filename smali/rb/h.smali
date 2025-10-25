.class public final synthetic Lrb/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lrb/o;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lrb/o;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb/h;->a:Lrb/o;

    iput-object p2, p0, Lrb/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lrb/h;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lrb/h;->a:Lrb/o;

    iget-object v1, p0, Lrb/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lrb/h;->c:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lrb/o;->c(Lrb/o;Ljava/lang/String;Ljava/lang/Object;)Lxc/t;

    move-result-object v0

    return-object v0
.end method
