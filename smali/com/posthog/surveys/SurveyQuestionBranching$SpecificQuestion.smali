.class public final Lcom/posthog/surveys/SurveyQuestionBranching$SpecificQuestion;
.super Lcom/posthog/surveys/SurveyQuestionBranching;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/surveys/SurveyQuestionBranching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpecificQuestion"
.end annotation


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/posthog/surveys/SurveyQuestionBranching;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Lcom/posthog/surveys/SurveyQuestionBranching$SpecificQuestion;->index:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/posthog/surveys/SurveyQuestionBranching$SpecificQuestion;->index:I

    .line 2
    .line 3
    return v0
.end method
