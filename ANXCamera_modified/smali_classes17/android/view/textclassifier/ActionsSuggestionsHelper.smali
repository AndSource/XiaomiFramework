.class public final Landroid/view/textclassifier/ActionsSuggestionsHelper;
.super Ljava/lang/Object;
.source "ActionsSuggestionsHelper.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;
    }
.end annotation


# static fields
.field private static final FIRST_NON_LOCAL_USER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActionsSuggestions"

.field private static final USER_LOCAL:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLabeledIntentResult(Landroid/content/Context;Landroid/view/textclassifier/intent/TemplateIntentFactory;Lcom/google/android/textclassifier/ActionsSuggestionsModel$ActionSuggestion;)Landroid/view/textclassifier/intent/LabeledIntent$Result;
    .locals 5

    nop

    invoke-virtual {p2}, Lcom/google/android/textclassifier/ActionsSuggestionsModel$ActionSuggestion;->getRemoteActionTemplates()[Lcom/google/android/textclassifier/RemoteActionTemplate;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createRemoteAction: Missing template for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/textclassifier/ActionsSuggestionsModel$ActionSuggestion;->getActionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActionsSuggestions"

    invoke-static {v3, v2}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/textclassifier/intent/TemplateIntentFactory;->create([Lcom/google/android/textclassifier/RemoteActionTemplate;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    nop

    invoke-virtual {p2}, Lcom/google/android/textclassifier/ActionsSuggestionsModel$ActionSuggestion;->getActionType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/view/textclassifier/ActionsSuggestionsHelper;->createTitleChooser(Ljava/lang/String;)Landroid/view/textclassifier/intent/LabeledIntent$TitleChooser;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/textclassifier/intent/LabeledIntent;

    invoke-virtual {v4, p0, v3, v1}, Landroid/view/textclassifier/intent/LabeledIntent;->resolve(Landroid/content/Context;Landroid/view/textclassifier/intent/LabeledIntent$TitleChooser;Landroid/os/Bundle;)Landroid/view/textclassifier/intent/LabeledIntent$Result;

    move-result-object v1

    return-object v1
.end method

.method public static createResultId(Landroid/content/Context;Ljava/util/List;ILjava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "%s_v%d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v7, Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$YTQv8oPvlmJL4tITUFD4z4JWKRk;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$YTQv8oPvlmJL4tITUFD4z4JWKRk;

    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v2

    const-string v3, "androidtc"

    invoke-static {v3, v1, v2}, Landroid/view/textclassifier/SelectionSessionLogger$SignatureParser;->createSignature(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static createTitleChooser(Ljava/lang/String;)Landroid/view/textclassifier/intent/LabeledIntent$TitleChooser;
    .locals 1

    const-string/jumbo v0, "open_url"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$sY0w9od2zcl4YFel0lG4VB3vf7I;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$sY0w9od2zcl4YFel0lG4VB3vf7I;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getRepresentation(Landroid/view/textclassifier/ConversationAction;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/ConversationAction;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/textclassifier/ConversationAction;->getAction()Landroid/app/RemoteAction;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/textclassifier/ConversationAction;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/view/textclassifier/ExtrasUtils;->getActionIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {p0}, Landroid/view/textclassifier/ConversationAction;->getAction()Landroid/app/RemoteAction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private static hashMessage(Landroid/view/textclassifier/ConversationActions$Message;)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/textclassifier/ConversationActions$Message;->getAuthor()Landroid/app/Person;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/view/textclassifier/ConversationActions$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/view/textclassifier/ConversationActions$Message;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$YTQv8oPvlmJL4tITUFD4z4JWKRk(Landroid/view/textclassifier/ConversationActions$Message;)I
    .locals 0

    invoke-static {p0}, Landroid/view/textclassifier/ActionsSuggestionsHelper;->hashMessage(Landroid/view/textclassifier/ConversationActions$Message;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$createTitleChooser$1(Landroid/view/textclassifier/intent/LabeledIntent;Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;
    .locals 2

    iget-boolean v0, p1, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/intent/LabeledIntent;->titleWithEntity:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/textclassifier/intent/LabeledIntent;->titleWithEntity:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/textclassifier/intent/LabeledIntent;->titleWithoutEntity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$toNativeMessages$0(Landroid/view/textclassifier/ConversationActions$Message;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/textclassifier/ConversationActions$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static removeActionsWithDuplicates(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationAction;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/ConversationAction;

    invoke-static {v2}, Landroid/view/textclassifier/ActionsSuggestionsHelper;->getRepresentation(Landroid/view/textclassifier/ConversationAction;)Landroid/util/Pair;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/textclassifier/ConversationAction;

    invoke-static {v5}, Landroid/view/textclassifier/ActionsSuggestionsHelper;->getRepresentation(Landroid/view/textclassifier/ConversationAction;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v3, :cond_3

    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public static toNativeMessages(Ljava/util/List;Ljava/util/function/Function;)[Lcom/google/android/textclassifier/ActionsSuggestionsModel$ConversationMessage;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/google/android/textclassifier/ActionsSuggestionsModel$ConversationMessage;"
        }
    .end annotation

    nop

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$6oTtcn9bDE-u-8FbiyGdntqoQG0;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$ActionsSuggestionsHelper$6oTtcn9bDE-u-8FbiyGdntqoQG0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/view/textclassifier/-$$Lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$OGSS2qx6njxlnp0dnKb4lA3jnw8;

    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/textclassifier/ActionsSuggestionsModel$ConversationMessage;

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v2, Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;-><init>(Landroid/view/textclassifier/ActionsSuggestionsHelper$1;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    :goto_0
    if-ltz v5, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/textclassifier/ConversationActions$Message;

    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationActions$Message;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object v7

    if-nez v7, :cond_1

    const-wide/16 v7, 0x0

    move-wide v12, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationActions$Message;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v7

    move-wide v12, v7

    :goto_1
    nop

    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationActions$Message;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object v7

    if-nez v7, :cond_2

    move-object v14, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationActions$Message;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    :goto_2
    nop

    new-instance v7, Lcom/google/android/textclassifier/ActionsSuggestionsModel$ConversationMessage;

    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationActions$Message;->getAuthor()Landroid/app/Person;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;->access$100(Landroid/view/textclassifier/ActionsSuggestionsHelper$PersonEncoder;Landroid/app/Person;)I

    move-result v10

    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationActions$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationActions$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    move-object/from16 v15, p1

    invoke-interface {v15, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v9, v7

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/google/android/textclassifier/ActionsSuggestionsModel$ConversationMessage;-><init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    nop

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/textclassifier/ActionsSuggestionsModel$ConversationMessage;

    invoke-interface {v1, v3}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/textclassifier/ActionsSuggestionsModel$ConversationMessage;

    return-object v3
.end method
