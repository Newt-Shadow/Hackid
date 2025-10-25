.class public final synthetic La8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/l;


# instance fields
.field public final synthetic a:La8/b;


# direct methods
.method public synthetic constructor <init>(La8/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/a;->a:La8/b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, La8/a;->a:La8/b;

    check-cast p1, Landroid/content/Context;

    invoke-static {v0, p1}, La8/b;->a(La8/b;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
