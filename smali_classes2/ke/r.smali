.class public final synthetic Lke/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public final synthetic a:Lge/d;

.field public final synthetic b:Lje/b;


# direct methods
.method public synthetic constructor <init>(Lge/d;Lje/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lke/r;->a:Lge/d;

    iput-object p2, p0, Lke/r;->b:Lje/b;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lke/r;->a:Lge/d;

    iget-object v1, p0, Lke/r;->b:Lje/b;

    invoke-static {v0, v1}, Lke/s;->a(Lge/d;Lje/b;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
